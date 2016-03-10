  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_032_016_ebx_r10w_r11w  #  1     0     5      OPC=callq_label    
  xchgl %ecx, %ebx                   #  2     0x5   2      OPC=xchgl_r32_r32  
  callq .clear_cf                    #  3     0x7   5      OPC=callq_label    
  adcl %ecx, %ebx                    #  4     0xc   2      OPC=adcl_r32_r32   
  setae %cl                          #  5     0xe   3      OPC=setae_r8       
  xchgw %r10w, %cx                   #  6     0x11  4      OPC=xchgw_r16_r16  
  retq                               #  7     0x15  1      OPC=retq           
                                                                              
.size target, .-target
