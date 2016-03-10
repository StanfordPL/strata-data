  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  vmovq %xmm2, %xmm15                #  1     0     4      OPC=vmovq_xmm_xmm             
  punpckhqdq %xmm3, %xmm15           #  2     0x4   5      OPC=punpckhqdq_xmm_xmm        
  vfnmsub231ps %xmm15, %xmm3, %xmm3  #  3     0x9   5      OPC=vfnmsub231ps_xmm_xmm_xmm  
  vaddss %xmm3, %xmm2, %xmm1         #  4     0xe   4      OPC=vaddss_xmm_xmm_xmm        
  retq                               #  5     0x12  1      OPC=retq                      
                                                                                         
.size target, .-target
