  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vmovhlps %xmm1, %xmm1, %xmm12             #  1     0     4      OPC=vmovhlps_xmm_xmm_xmm  
  vmaxpd %ymm12, %ymm12, %ymm1              #  2     0x4   5      OPC=vmaxpd_ymm_ymm_ymm    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label           
  movzwq %dx, %rbx                          #  4     0xe   4      OPC=movzwq_r64_r16        
  retq                                      #  5     0x12  1      OPC=retq                  
                                                                                            
.size target, .-target
