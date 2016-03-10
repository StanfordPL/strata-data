  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  movsbl %bl, %r12d                  #  1     0     4      OPC=movsbl_r32_r8   
  movsbw %ah, %bx                    #  2     0x4   4      OPC=movsbw_r16_rh   
  movzwl %r12w, %r13d                #  3     0x8   4      OPC=movzwl_r32_r16  
  movq $0x80, %rdx                   #  4     0xc   10     OPC=movq_r64_imm64  
  addw %bx, %r13w                    #  5     0x16  4      OPC=addw_r16_r16    
  callq .move_008_016_r12b_r13b_dx   #  6     0x1a  5      OPC=callq_label     
  callq .move_064_032_rdx_r10d_r11d  #  7     0x1f  5      OPC=callq_label     
  xaddb %bl, %r10b                   #  8     0x24  4      OPC=xaddb_r8_r8     
  movq %rdx, %rax                    #  9     0x28  3      OPC=movq_r64_r64    
  retq                               #  10    0x2b  1      OPC=retq            
                                                                               
.size target, .-target
