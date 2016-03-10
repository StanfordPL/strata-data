  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  pmovzxbq %xmm1, %xmm3   #  1     0     5      OPC=pmovzxbq_xmm_xmm   
  movupd %xmm1, %xmm1     #  2     0x5   4      OPC=movupd_xmm_xmm     
  vpmovsxwq %xmm3, %ymm4  #  3     0x9   5      OPC=vpmovsxwq_ymm_xmm  
  movupd %xmm1, %xmm0     #  4     0xe   4      OPC=movupd_xmm_xmm     
  haddps %xmm4, %xmm4     #  5     0x12  4      OPC=haddps_xmm_xmm     
  unpckhpd %xmm4, %xmm0   #  6     0x16  4      OPC=unpckhpd_xmm_xmm   
  vmovq %xmm0, %rbx       #  7     0x1a  5      OPC=vmovq_r64_xmm      
  retq                    #  8     0x1f  1      OPC=retq               
                                                                       
.size target, .-target
