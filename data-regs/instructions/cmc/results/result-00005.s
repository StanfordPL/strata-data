  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setae %ch         #  1     0    3      OPC=setae_rh       
  movsbl %ch, %esi  #  2     0x3  3      OPC=movsbl_r32_rh  
  negw %si          #  3     0x6  3      OPC=negw_r16       
  retq              #  4     0x9  1      OPC=retq           
                                                            
.size target, .-target
