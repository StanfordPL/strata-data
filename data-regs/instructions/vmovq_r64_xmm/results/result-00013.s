  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r12_r13   #  1     0     5      OPC=callq_label     
  callq .move_016_032_r12w_r13w_ebx  #  2     0x5   5      OPC=callq_label     
  xaddl %r13d, %ebx                  #  3     0xa   4      OPC=xaddl_r32_r32   
  xorw %r13w, %r13w                  #  4     0xe   4      OPC=xorw_r16_r16    
  cmoveq %r12, %rbx                  #  5     0x12  4      OPC=cmoveq_r64_r64  
  retq                               #  6     0x16  1      OPC=retq            
                                                                               
.size target, .-target
