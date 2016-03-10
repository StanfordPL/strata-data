  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_cf_into_rcx  #  1     0     5      OPC=callq_label     
  movq $0x4, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  shlb $0x1, %cl           #  3     0xf   2      OPC=shlb_r8_one     
  setnp %ch                #  4     0x11  3      OPC=setnp_rh        
  xchgl %ecx, %eax         #  5     0x14  2      OPC=xchgl_r32_r32   
  retq                     #  6     0x16  1      OPC=retq            
                                                                     
.size target, .-target
