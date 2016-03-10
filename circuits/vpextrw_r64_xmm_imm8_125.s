  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_128_64_xmm1_xmm8_xmm9  #  1     0     5      OPC=callq_label    
  xorb %dil, %dil                    #  2     0x5   2      OPC=xorb_r8_r8     
  vmovd %xmm9, %ebx                  #  3     0x7   4      OPC=vmovd_r32_xmm  
  callq .move_032_016_ebx_r10w_r11w  #  4     0xb   5      OPC=callq_label    
  callq .read_sf_into_rbx            #  5     0x10  5      OPC=callq_label    
  xchgw %r11w, %bx                   #  6     0x15  4      OPC=xchgw_r16_r16  
  retq                               #  7     0x19  1      OPC=retq           
                                                                              
.size target, .-target
