  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  xorq %rbx, %rbx                                 #  2     0x5   3      OPC=xorq_r64_r64      
  movd %xmm9, %esi                                #  3     0x8   5      OPC=movd_r32_xmm      
  cmovnbel %ebx, %esi                             #  4     0xd   3      OPC=cmovnbel_r32_r32  
  xaddl %esi, %ebx                                #  5     0x10  3      OPC=xaddl_r32_r32     
  retq                                            #  6     0x13  1      OPC=retq              
                                                                                              
.size target, .-target
