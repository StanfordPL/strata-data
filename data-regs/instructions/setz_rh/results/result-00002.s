  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x8, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  cbtw                     #  3     0xf   2      OPC=cbtw            
  xorb %cl, %ah            #  4     0x11  2      OPC=xorb_rh_r8      
  retq                     #  5     0x13  1      OPC=retq            
                                                                     
.size target, .-target
