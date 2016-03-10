  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vzeroall                                  #  2     0x5   3      OPC=vzeroall           
  vmovd %eax, %xmm0                         #  3     0x8   4      OPC=vmovd_xmm_r32      
  vmovsldup %ymm0, %ymm4                    #  4     0xc   4      OPC=vmovsldup_ymm_ymm  
  movddup %xmm4, %xmm1                      #  5     0x10  4      OPC=movddup_xmm_xmm    
  retq                                      #  6     0x14  1      OPC=retq               
                                                                                         
.size target, .-target
