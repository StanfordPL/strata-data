  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                     
.target:                         #        0    0      OPC=<label>                
  sqrtps %xmm2, %xmm9            #  1     0    4      OPC=sqrtps_xmm_xmm         
  vcvtss2sd %xmm9, %xmm2, %xmm6  #  2     0x4  5      OPC=vcvtss2sd_xmm_xmm_xmm  
  cvtsd2ss %xmm6, %xmm1          #  3     0x9  4      OPC=cvtsd2ss_xmm_xmm       
  retq                           #  4     0xd  1      OPC=retq                   
                                                                                 
.size target, .-target
