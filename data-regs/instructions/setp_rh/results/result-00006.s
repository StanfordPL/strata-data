  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode                 
.target:                   #        0     0      OPC=<label>            
  setnp %sil               #  1     0     4      OPC=setnp_r8           
  clc                      #  2     0x4   1      OPC=clc                
  callq .read_cf_into_rbx  #  3     0x5   5      OPC=callq_label        
  movzbl %bh, %edx         #  4     0xa   3      OPC=movzbl_r32_rh      
  salb $0x1, %sil          #  5     0xd   3      OPC=salb_r8_one        
  setna %dh                #  6     0x10  3      OPC=setna_rh           
  shlxq %rdx, %rdx, %rax   #  7     0x13  5      OPC=shlxq_r64_r64_r64  
  retq                     #  8     0x18  1      OPC=retq               
                                                                        
.size target, .-target
