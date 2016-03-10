  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  andnps %xmm1, %xmm1      #  1     0    3      OPC=andnps_xmm_xmm      
  pmovzxwq %xmm1, %xmm1    #  2     0x3  5      OPC=pmovzxwq_xmm_xmm    
  punpcklqdq %xmm1, %xmm1  #  3     0x8  4      OPC=punpcklqdq_xmm_xmm  
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
