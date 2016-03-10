  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32     
  andb %bh, %bl                                 #  2     0x2   2      OPC=andb_r8_rh       
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  3     0x4   5      OPC=callq_label      
  vmovq %xmm5, %r8                              #  4     0x9   5      OPC=vmovq_r64_xmm    
  cmovaew %r8w, %bx                             #  5     0xe   5      OPC=cmovaew_r16_r16  
  retq                                          #  6     0x13  1      OPC=retq             
                                                                                           
.size target, .-target
