  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                    
.target:                                    #        0     0      OPC=<label>               
  vpbroadcastq %xmm1, %ymm3                 #  1     0     5      OPC=vpbroadcastq_ymm_xmm  
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  2     0x5   5      OPC=callq_label           
  movq $0x40, %rbx                          #  3     0xa   10     OPC=movq_r64_imm64        
  andb %bl, %bh                             #  4     0x14  2      OPC=andb_rh_r8            
  cmovpw %dx, %bx                           #  5     0x16  4      OPC=cmovpw_r16_r16        
  retq                                      #  6     0x1a  1      OPC=retq                  
                                                                                            
.size target, .-target
