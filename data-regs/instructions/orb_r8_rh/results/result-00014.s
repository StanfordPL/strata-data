  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  orb %bl, %ah                    #  1     0     2      OPC=orb_rh_r8       
  movq $0xfffffffffffffff9, %r12  #  2     0x2   10     OPC=movq_r64_imm64  
  subq %r12, %r12                 #  3     0xc   3      OPC=subq_r64_r64    
  callq .read_sf_into_rbx         #  4     0xf   5      OPC=callq_label     
  xorb %ah, %bl                   #  5     0x14  2      OPC=xorb_r8_rh      
  retq                            #  6     0x16  1      OPC=retq            
                                                                            
.size target, .-target
