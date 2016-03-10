  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vzeroall                                  #  2     0x5   3      OPC=vzeroall           
  movd %eax, %xmm7                          #  3     0x8   4      OPC=movd_xmm_r32       
  vpmovsxbq %xmm7, %ymm9                    #  4     0xc   5      OPC=vpmovsxbq_ymm_xmm  
  pxor %xmm9, %xmm1                         #  5     0x11  5      OPC=pxor_xmm_xmm       
  retq                                      #  6     0x16  1      OPC=retq               
                                                                                         
.size target, .-target
