  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP  Bytes  Opcode                   
.target:                       #        0    0      OPC=<label>              
  cvtsd2ss %xmm1, %xmm1        #  1     0    4      OPC=cvtsd2ss_xmm_xmm     
  vandnps %xmm1, %xmm1, %xmm9  #  2     0x4  4      OPC=vandnps_xmm_xmm_xmm  
  movapd %xmm9, %xmm1          #  3     0x8  5      OPC=movapd_xmm_xmm       
  retq                         #  4     0xd  1      OPC=retq                 
                                                                             
.size target, .-target
