  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_byte_7_of_ymm1_to_r8b  #  1     0     5      OPC=callq_label     
  movq $0x0, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  movzbl %r8b, %eax                  #  3     0xf   4      OPC=movzbl_r32_r8   
  xchgl %eax, %ebx                   #  4     0x13  1      OPC=xchgl_r32_eax   
  xorb %ah, %bh                      #  5     0x14  2      OPC=xorb_rh_rh      
  retq                               #  6     0x16  1      OPC=retq            
                                                                               
.size target, .-target
