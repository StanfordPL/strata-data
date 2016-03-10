  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  clc                               #  1     0     1      OPC=clc             
  movq $0x3, %rsi                   #  2     0x1   10     OPC=movq_r64_imm64  
  callq .read_cf_into_rbx           #  3     0xb   5      OPC=callq_label     
  movsbw %ah, %bx                   #  4     0x10  4      OPC=movsbw_r16_rh   
  xchgw %bx, %si                    #  5     0x14  3      OPC=xchgw_r16_r16   
  rcll $0x1, %ebx                   #  6     0x17  2      OPC=rcll_r32_one    
  callq .move_064_032_rbx_r8d_r9d   #  7     0x19  5      OPC=callq_label     
  movzbq %sil, %rbx                 #  8     0x1e  4      OPC=movzbq_r64_r8   
  callq .move_r9b_to_byte_3_of_rbx  #  9     0x22  5      OPC=callq_label     
  retq                              #  10    0x27  1      OPC=retq            
                                                                              
.size target, .-target
