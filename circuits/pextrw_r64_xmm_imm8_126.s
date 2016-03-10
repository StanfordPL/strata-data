  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  xorl %r10d, %r10d                             #  1     0     3      OPC=xorl_r32_r32     
  callq .read_zf_into_rbx                       #  2     0x3   5      OPC=callq_label      
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label      
  movzbq %r13b, %r8                             #  4     0xd   4      OPC=movzbq_r64_r8    
  cmovlew %r13w, %r8w                           #  5     0x11  5      OPC=cmovlew_r16_r16  
  cmovgew %r8w, %bx                             #  6     0x16  5      OPC=cmovgew_r16_r16  
  retq                                          #  7     0x1b  1      OPC=retq             
                                                                                           
.size target, .-target
