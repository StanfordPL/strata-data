  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                          
.target:                                        #        0     0      OPC=<label>                     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label                 
  vfmaddsub231pd %xmm1, %xmm4, %xmm1            #  2     0x5   5      OPC=vfmaddsub231pd_xmm_xmm_xmm  
  vunpcklpd %xmm1, %xmm7, %xmm1                 #  3     0xa   4      OPC=vunpcklpd_xmm_xmm_xmm       
  vmovq %xmm1, %rax                             #  4     0xe   5      OPC=vmovq_r64_xmm               
  movq %rax, %rbx                               #  5     0x13  3      OPC=movq_r64_r64                
  retq                                          #  6     0x16  1      OPC=retq                        
                                                                                                      
.size target, .-target
