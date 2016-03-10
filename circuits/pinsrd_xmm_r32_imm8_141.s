  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                      
.target:                            #        0    0      OPC=<label>                 
  vmovd %ebx, %xmm14                #  1     0    4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm14, %xmm1, %xmm10  #  2     0x4  5      OPC=vpunpckldq_xmm_xmm_xmm  
  movsd %xmm10, %xmm1               #  3     0x9  5      OPC=movsd_xmm_xmm           
  retq                              #  4     0xe  1      OPC=retq                    
                                                                                     
.size target, .-target
