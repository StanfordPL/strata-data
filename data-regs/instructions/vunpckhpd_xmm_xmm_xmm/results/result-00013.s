  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  vmovhlps %xmm2, %xmm3, %xmm15        #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm   
  movss %xmm13, %xmm12                 #  3     0x9   5      OPC=movss_xmm_xmm          
  vunpcklpd %xmm12, %xmm15, %xmm1      #  4     0xe   5      OPC=vunpcklpd_xmm_xmm_xmm  
  movupd %xmm15, %xmm1                 #  5     0x13  5      OPC=movupd_xmm_xmm         
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
