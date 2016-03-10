  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  vsqrtpd %xmm3, %xmm10                #  1     0     4      OPC=vsqrtpd_xmm_xmm       
  vmovq %xmm10, %xmm1                  #  2     0x4   5      OPC=vmovq_xmm_xmm         
  vmovhlps %xmm2, %xmm2, %xmm11        #  3     0x9   4      OPC=vmovhlps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label           
  retq                                 #  5     0x12  1      OPC=retq                  
                                                                                       
.size target, .-target
