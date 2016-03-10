  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label     
  movq $0x40, %rax         #  2     0x5   10     OPC=movq_r64_imm64  
  adcb %bl, %al            #  3     0xf   2      OPC=adcb_r8_r8      
  setnp %ah                #  4     0x11  3      OPC=setnp_rh        
  retq                     #  5     0x14  1      OPC=retq            
                                                                     
.size target, .-target
