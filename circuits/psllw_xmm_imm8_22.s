  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  vcvtsd2ss %xmm1, %xmm1, %xmm8  #  1     0    4      OPC=vcvtsd2ss_xmm_xmm_xmm  
  movups %xmm8, %xmm1            #  2     0x4  4      OPC=movups_xmm_xmm         
  andnpd %xmm1, %xmm1            #  3     0x8  4      OPC=andnpd_xmm_xmm         
  retq                           #  4     0xc  1      OPC=retq                   
                                                                                 
.size target, .-target
