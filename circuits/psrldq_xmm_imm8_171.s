  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  andnps %xmm1, %xmm1      #  1     0    3      OPC=andnps_xmm_xmm      
  vmovshdup %xmm1, %xmm15  #  2     0x3  4      OPC=vmovshdup_xmm_xmm   
  andnps %xmm15, %xmm1     #  3     0x7  4      OPC=andnps_xmm_xmm      
  punpcklqdq %xmm1, %xmm1  #  4     0xb  4      OPC=punpcklqdq_xmm_xmm  
  retq                     #  5     0xf  1      OPC=retq                
                                                                        
.size target, .-target
