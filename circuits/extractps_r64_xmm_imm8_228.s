  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  pmovzxdq %xmm1, %xmm15  #  1     0    6      OPC=pmovzxdq_xmm_xmm  
  movaps %xmm15, %xmm2    #  2     0x6  4      OPC=movaps_xmm_xmm    
  vmovd %xmm2, %ebx       #  3     0xa  4      OPC=vmovd_r32_xmm     
  retq                    #  4     0xe  1      OPC=retq              
                                                                     
.size target, .-target
