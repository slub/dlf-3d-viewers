<?php

use Drupal\Core\Routing\RouteMatchInterface;
use Drupal\Core\Form\FormStateInterface;
use Drupal\Core\Template\Attribute;
use Drupal\Core\Url;

\Drupal::messenger()->addMessage(serialize(Drupal\Core\Entity\EntityInterface $entity));

?>