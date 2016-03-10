  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                   
.target:                              #        0     0      OPC=<label>              
  vminss %xmm1, %xmm1, %xmm2          #  1     0     4      OPC=vminss_xmm_xmm_xmm   
  vcvttss2sil %xmm2, %r9d             #  2     0x4   4      OPC=vcvttss2sil_r32_xmm  
  xchgw %bx, %r9w                     #  3     0x8   4      OPC=xchgw_r16_r16        
  callq .move_r9b_to_byte_12_of_ymm1  #  4     0xc   5      OPC=callq_label          
  retq                                #  5     0x11  1      OPC=retq                 
                                                                                     
.size target, .-target
