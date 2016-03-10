  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vpmovzxwq %xmm1, %ymm8  #  1     0    5      OPC=vpmovzxwq_ymm_xmm  
  vmovmskpd %xmm8, %edi   #  2     0x5  5      OPC=vmovmskpd_r32_xmm  
  movd %edi, %xmm1        #  3     0xa  4      OPC=movd_xmm_r32       
  retq                    #  4     0xe  1      OPC=retq               
                                                                      
.size target, .-target
