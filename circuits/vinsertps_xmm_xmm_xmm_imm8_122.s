  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label         
  vsubss %xmm1, %xmm1, %xmm1                #  2     0x5   4      OPC=vsubss_xmm_xmm_xmm  
  vmovd %r8d, %xmm6                         #  3     0x9   5      OPC=vmovd_xmm_r32       
  movd %eax, %xmm1                          #  4     0xe   4      OPC=movd_xmm_r32        
  punpcklqdq %xmm6, %xmm1                   #  5     0x12  4      OPC=punpcklqdq_xmm_xmm  
  retq                                      #  6     0x16  1      OPC=retq                
                                                                                          
.size target, .-target
