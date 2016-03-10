  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  xorq %rdx, %rdx                    #  1     0     3      OPC=xorq_r64_r64    
  callq .move_064_032_rdx_r10d_r11d  #  2     0x3   5      OPC=callq_label     
  shll $0x1, %eax                    #  3     0x8   2      OPC=shll_r32_one    
  decl %r11d                         #  4     0xa   3      OPC=decl_r32        
  cmovcl %r11d, %edx                 #  5     0xd   4      OPC=cmovcl_r32_r32  
  retq                               #  6     0x11  1      OPC=retq            
                                                                               
.size target, .-target
