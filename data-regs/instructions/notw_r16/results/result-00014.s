  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode              
.target:                           #        0     0      OPC=<label>         
  movswl %bx, %ebx                 #  1     0     3      OPC=movswl_r32_r16  
  movq $0xffffffffffffffff, %rdx   #  2     0x3   10     OPC=movq_r64_imm64  
  xorq %rbx, %rdx                  #  3     0xd   3      OPC=xorq_r64_r64    
  callq .move_064_032_rdx_r8d_r9d  #  4     0x10  5      OPC=callq_label     
  xorw %bx, %bx                    #  5     0x15  3      OPC=xorw_r16_r16    
  xchgw %bx, %r8w                  #  6     0x18  4      OPC=xchgw_r16_r16   
  retq                             #  7     0x1c  1      OPC=retq            
                                                                             
.size target, .-target
