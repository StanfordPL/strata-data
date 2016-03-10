  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode              
.target:                                    #        0     0      OPC=<label>         
  movq $0xfffffffffffffffa, %rbx            #  1     0     10     OPC=movq_r64_imm64  
  subw %bx, %bx                             #  2     0xa   3      OPC=subw_r16_r16    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  3     0xd   5      OPC=callq_label     
  callq .move_byte_2_of_ymm1_to_r8b         #  4     0x12  5      OPC=callq_label     
  movb %r8b, %bl                            #  5     0x17  3      OPC=movb_r8_r8      
  xaddl %ebx, %edx                          #  6     0x1a  3      OPC=xaddl_r32_r32   
  retq                                      #  7     0x1d  1      OPC=retq            
                                                                                      
.size target, .-target
