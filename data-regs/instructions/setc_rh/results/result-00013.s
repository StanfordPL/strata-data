  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_cf_into_rcx            #  1     0     5      OPC=callq_label     
  callq .move_032_016_ecx_r10w_r11w  #  2     0x5   5      OPC=callq_label     
  callq .move_016_032_r10w_r11w_edx  #  3     0xa   5      OPC=callq_label     
  movb %cl, %dh                      #  4     0xf   2      OPC=movb_rh_r8      
  movswq %dx, %rax                   #  5     0x11  4      OPC=movswq_r64_r16  
  retq                               #  6     0x15  1      OPC=retq            
                                                                               
.size target, .-target
