  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movq $0x7, %rdx          #  1     0     10     OPC=movq_r64_imm64   
  xaddb %dh, %bl           #  2     0xa   3      OPC=xaddb_r8_rh      
  callq .clear_zf          #  3     0xd   5      OPC=callq_label      
  movsbq %bl, %r14         #  4     0x12  4      OPC=movsbq_r64_r8    
  movsbq %cl, %r15         #  5     0x16  4      OPC=movsbq_r64_r8    
  callq .read_zf_into_rbx  #  6     0x1a  5      OPC=callq_label      
  orq %r14, %r15           #  7     0x1f  3      OPC=orq_r64_r64      
  cmovncw %r15w, %bx       #  8     0x22  5      OPC=cmovncw_r16_r16  
  retq                     #  9     0x27  1      OPC=retq             
                                                                      
.size target, .-target
