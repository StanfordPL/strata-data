  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movzwl %bx, %r11d                  #  1     0     4      OPC=movzwl_r32_r16  
  movq $0xffffffffffffffff, %r10     #  2     0x4   10     OPC=movq_r64_imm64  
  xorw %bx, %r10w                    #  3     0xe   4      OPC=xorw_r16_r16    
  callq .move_016_032_r10w_r11w_ebx  #  4     0x12  5      OPC=callq_label     
  retq                               #  5     0x17  1      OPC=retq            
                                                                               
.size target, .-target
