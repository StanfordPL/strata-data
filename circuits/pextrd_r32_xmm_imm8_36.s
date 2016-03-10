  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movd %xmm1, %r8d    #  1     0     5      OPC=movd_r32_xmm     
  movq $0x24, %rax    #  2     0x5   10     OPC=movq_r64_imm64   
  popcntq %rax, %rbx  #  3     0xf   5      OPC=popcntq_r64_r64  
  testb %al, %bh      #  4     0x14  2      OPC=testb_rh_r8      
  cmovnbl %r8d, %ebx  #  5     0x16  4      OPC=cmovnbl_r32_r32  
  retq                #  6     0x1a  1      OPC=retq             
                                                                 
.size target, .-target
