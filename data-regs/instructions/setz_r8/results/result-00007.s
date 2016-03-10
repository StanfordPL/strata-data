  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffff80, %rdx  #  1     0     10     OPC=movq_r64_imm64  
  callq .read_zf_into_rbx         #  2     0xa   5      OPC=callq_label     
  addw %bx, %dx                   #  3     0xf   3      OPC=addw_r16_r16    
  callq .read_pf_into_rbx         #  4     0x12  5      OPC=callq_label     
  retq                            #  5     0x17  1      OPC=retq            
                                                                            
.size target, .-target
