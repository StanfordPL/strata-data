  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP  Bytes  Opcode                   
.target:                             #        0    0      OPC=<label>              
  vcvttss2sil %xmm1, %r9d            #  1     0    4      OPC=vcvttss2sil_r32_xmm  
  callq .move_r9b_to_byte_7_of_ymm1  #  2     0x4  5      OPC=callq_label          
  andnpd %xmm1, %xmm1                #  3     0x9  4      OPC=andnpd_xmm_xmm       
  retq                               #  4     0xd  1      OPC=retq                 
                                                                                   
.size target, .-target
