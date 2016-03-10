  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                     
.target:                                    #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label            
  callq .move_128_064_xmm3_r10_r11          #  2     0x5   5      OPC=callq_label            
  popcntq %r10, %rbp                        #  3     0xa   5      OPC=popcntq_r64_r64        
  cmovael %edx, %r10d                       #  4     0xf   4      OPC=cmovael_r32_r32        
  vzeroall                                  #  5     0x13  3      OPC=vzeroall               
  movd %eax, %xmm2                          #  6     0x16  4      OPC=movd_xmm_r32           
  vunpcklps %ymm2, %ymm1, %ymm0             #  7     0x1a  4      OPC=vunpcklps_ymm_ymm_ymm  
  callq .move_064_128_r10_r11_xmm1          #  8     0x1e  5      OPC=callq_label            
  paddq %xmm0, %xmm1                        #  9     0x23  4      OPC=paddq_xmm_xmm          
  retq                                      #  10    0x27  1      OPC=retq                   
                                                                                             
.size target, .-target
