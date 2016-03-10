  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  notb %ah                        #  1     0     2      OPC=notb_rh         
  setnae %al                      #  2     0x2   3      OPC=setnae_r8       
  movq $0xfffffffffffffffe, %rdx  #  3     0x5   10     OPC=movq_r64_imm64  
  adcb %dl, %al                   #  4     0xf   2      OPC=adcb_r8_r8      
  cwtl                            #  5     0x11  1      OPC=cwtl            
  xaddb %dl, %dh                  #  6     0x12  3      OPC=xaddb_rh_r8     
  notq %rax                       #  7     0x15  3      OPC=notq_r64        
  adcw %ax, %ax                   #  8     0x18  3      OPC=adcw_r16_r16    
  retq                            #  9     0x1b  1      OPC=retq            
                                                                            
.size target, .-target
