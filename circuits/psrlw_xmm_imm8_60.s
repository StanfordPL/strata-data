  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  cvtss2sd %xmm1, %xmm1    #  1     0    4      OPC=cvtss2sd_xmm_xmm    
  andnps %xmm1, %xmm1      #  2     0x4  3      OPC=andnps_xmm_xmm      
  cvtps2pd %xmm1, %xmm1    #  3     0x7  3      OPC=cvtps2pd_xmm_xmm    
  punpcklqdq %xmm1, %xmm1  #  4     0xa  4      OPC=punpcklqdq_xmm_xmm  
  retq                     #  5     0xe  1      OPC=retq                
                                                                        
.size target, .-target
