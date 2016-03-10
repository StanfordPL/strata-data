  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm12        #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vandnpd %xmm12, %xmm12, %xmm13       #  2     0x4   5      OPC=vandnpd_xmm_xmm_xmm   
  vmovupd %xmm13, %xmm12               #  3     0x9   5      OPC=vmovupd_xmm_xmm       
  callq .move_64_128_xmm12_xmm13_xmm1  #  4     0xe   5      OPC=callq_label           
  retq                                 #  5     0x13  1      OPC=retq                  
                                                                                       
.size target, .-target
