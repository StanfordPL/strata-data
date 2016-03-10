  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vorps %xmm1, %xmm1, %xmm15  #  1     0    4      OPC=vorps_xmm_xmm_xmm  
  pmovzxwq %xmm15, %xmm13     #  2     0x4  6      OPC=pmovzxwq_xmm_xmm   
  vmovq %xmm13, %rbx          #  3     0xa  5      OPC=vmovq_r64_xmm      
  retq                        #  4     0xf  1      OPC=retq               
                                                                          
.size target, .-target
