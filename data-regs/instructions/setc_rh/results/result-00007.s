  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x1, %rax          #  1     0     10     OPC=movq_r64_imm64  
  callq .read_cf_into_rcx  #  2     0xa   5      OPC=callq_label     
  movb %cl, %ah            #  3     0xf   2      OPC=movb_rh_r8      
  movslq %eax, %rax        #  4     0x11  3      OPC=movslq_r64_r32  
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target
