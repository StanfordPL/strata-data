  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .clear_sf                    #  1     0     5      OPC=callq_label    
  callq .read_sf_into_rcx            #  2     0x5   5      OPC=callq_label    
  movzbw %ah, %ax                    #  3     0xa   4      OPC=movzbw_r16_rh  
  callq .move_032_016_ecx_r10w_r11w  #  4     0xe   5      OPC=callq_label    
  addw %r10w, %r11w                  #  5     0x13  4      OPC=addw_r16_r16   
  adcb %bl, %al                      #  6     0x17  2      OPC=adcb_r8_r8     
  movb %al, %ah                      #  7     0x19  2      OPC=movb_rh_r8     
  retq                               #  8     0x1b  1      OPC=retq           
                                                                              
.size target, .-target
