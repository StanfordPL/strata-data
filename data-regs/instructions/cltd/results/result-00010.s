  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                            #  Line  RIP   Bytes  Opcode               
.target:                          #        0     0      OPC=<label>          
  sall $0x1, %eax                 #  1     0     2      OPC=sall_r32_one     
  callq .read_cf_into_rcx         #  2     0x2   5      OPC=callq_label      
  movq $0xffffffffffffffff, %rdx  #  3     0x7   10     OPC=movq_r64_imm64   
  cmovgew %cx, %cx                #  4     0x11  4      OPC=cmovgew_r16_r16  
  cmovnbl %ecx, %eax              #  5     0x15  3      OPC=cmovnbl_r32_r32  
  roll $0x1, %edx                 #  6     0x18  2      OPC=roll_r32_one     
  xorq %r14, %r14                 #  7     0x1a  3      OPC=xorq_r64_r64     
  addw %r14w, %cx                 #  8     0x1d  4      OPC=addw_r16_r16     
  cmovel %eax, %edx               #  9     0x21  3      OPC=cmovel_r32_r32   
  retq                            #  10    0x24  1      OPC=retq             
                                                                             
.size target, .-target
