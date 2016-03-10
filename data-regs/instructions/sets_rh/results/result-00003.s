  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x1, %rax          #  2     0x5   10     OPC=movq_r64_imm64  
  callq .set_szp_for_bx    #  3     0xf   5      OPC=callq_label     
  movzbl %ah, %ecx         #  4     0x14  3      OPC=movzbl_r32_rh   
  salq %cl, %rbx           #  5     0x17  3      OPC=salq_r64_cl     
  setne %ah                #  6     0x1a  3      OPC=setne_rh        
  retq                     #  7     0x1d  1      OPC=retq            
                                                                     
.size target, .-target
