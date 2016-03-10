  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movsbl %cl, %edi                  #  1     0     3      OPC=movsbl_r32_r8   
  movq $0xfffffffffffffffe, %rbx    #  2     0x3   10     OPC=movq_r64_imm64  
  xorw %bx, %bx                     #  3     0xd   3      OPC=xorw_r16_r16    
  callq .move_032_016_ebx_r8w_r9w   #  4     0x10  5      OPC=callq_label     
  movsbq %dil, %rbx                 #  5     0x15  4      OPC=movsbq_r64_r8   
  rolb $0x1, %bh                    #  6     0x19  2      OPC=rolb_rh_one     
  callq .move_r9b_to_byte_5_of_rbx  #  7     0x1b  5      OPC=callq_label     
  retq                              #  8     0x20  1      OPC=retq            
                                                                              
.size target, .-target
