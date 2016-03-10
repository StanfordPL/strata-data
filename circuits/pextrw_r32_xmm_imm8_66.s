  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  xorq %rbx, %rbx                           #  1     0     3      OPC=xorq_r64_r64     
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0x3   5      OPC=callq_label      
  cmovgw %r8w, %ax                          #  3     0x8   5      OPC=cmovgw_r16_r16   
  cmovaw %ax, %dx                           #  4     0xd   4      OPC=cmovaw_r16_r16   
  cmovnsw %dx, %bx                          #  5     0x11  4      OPC=cmovnsw_r16_r16  
  retq                                      #  6     0x15  1      OPC=retq             
                                                                                       
.size target, .-target
