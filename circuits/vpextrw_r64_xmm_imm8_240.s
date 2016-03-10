  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                    
.target:                      #        0     0      OPC=<label>               
  vpbroadcastd %xmm1, %ymm14  #  1     0     5      OPC=vpbroadcastd_ymm_xmm  
  movq $0x0, %rbx             #  2     0x5   10     OPC=movq_r64_imm64        
  vpbroadcastw %xmm14, %ymm8  #  3     0xf   5      OPC=vpbroadcastw_ymm_xmm  
  vmovd %xmm8, %edi           #  4     0x14  4      OPC=vmovd_r32_xmm         
  xchgw %di, %bx              #  5     0x18  3      OPC=xchgw_r16_r16         
  retq                        #  6     0x1b  1      OPC=retq                  
                                                                              
.size target, .-target
