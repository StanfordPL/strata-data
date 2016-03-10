  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                      #  Line  RIP  Bytes  Opcode                  
.target:                    #        0    0      OPC=<label>             
  pmovzxbq %xmm1, %xmm14    #  1     0    6      OPC=pmovzxbq_xmm_xmm    
  punpckhqdq %xmm14, %xmm1  #  2     0x6  5      OPC=punpckhqdq_xmm_xmm  
  vmovd %xmm1, %ebx         #  3     0xb  4      OPC=vmovd_r32_xmm       
  retq                      #  4     0xf  1      OPC=retq                
                                                                         
.size target, .-target
