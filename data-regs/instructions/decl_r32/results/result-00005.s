  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rdx     #  1     0     10     OPC=movq_r64_imm64  
  movl %ebx, %eax                    #  2     0xa   2      OPC=movl_r32_r32    
  decw %ax                           #  3     0xc   3      OPC=decw_r16        
  callq .move_064_032_rdx_r10d_r11d  #  4     0xf   5      OPC=callq_label     
  xaddl %r11d, %ebx                  #  5     0x14  4      OPC=xaddl_r32_r32   
  xchgw %ax, %bx                     #  6     0x18  3      OPC=xchgw_r16_r16   
  retq                               #  7     0x1b  1      OPC=retq            
                                                                               
.size target, .-target
