  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm6                 #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  movupd %xmm6, %xmm2                       #  2     0x5   4      OPC=movupd_xmm_xmm        
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0x9   5      OPC=callq_label           
  movq $0x2, %rbx                           #  4     0xe   10     OPC=movq_r64_imm64        
  movslq %r8d, %rdx                         #  5     0x18  3      OPC=movslq_r64_r32        
  movw %dx, %bx                             #  6     0x1b  3      OPC=movw_r16_r16          
  retq                                      #  7     0x1e  1      OPC=retq                  
                                                                                            
.size target, .-target
